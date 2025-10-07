import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vyra/core/utils/constants/constants.dart';
import 'package:vyra/core/utils/functions/validation_functions.dart';
import 'package:vyra/core/utils/routes/route_generator.dart';
import 'package:vyra/core/utils/widgets/widgets.dart';
import 'package:vyra/feature/auth/presentation/cubits/auth_cubit.dart';
import 'package:vyra/feature/auth/presentation/cubits/auth_state.dart';
import 'package:vyra/l10n/app_localizations.dart';

import '../../../../../core/utils/enums/enums.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isPasswordVisible = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _handleSignIn() {
    if (_formKey.currentState!.validate()) {
      HapticFeedback.lightImpact();
      context.read<AuthCubit>().signin(
        username: _emailController.text,
        password: _passwordController.text,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state.status == AuthStatus.authenticated) {
          RouteGenerator.replaceWith(Routes.home);
        } else if (state.status == AuthStatus.failure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                state.error ?? AppLocalizations.of(context)!.anErrorOccurred,
              ),
              backgroundColor: ColorConstants.red,
            ),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(SizeConstants.s24),
              child: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUnfocus,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const VyraSizedBox(height: SizeConstants.s40),

                    // Header
                    Text(
                      AppLocalizations.of(context)!.welcomeBack,
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    const VyraSizedBox(height: SizeConstants.s8),
                    Text(
                      AppLocalizations.of(context)!.signInDescription,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onSecondary,
                      ),
                    ),

                    const VyraSizedBox(height: SizeConstants.s20),

                    // Email Field
                    VyraTextFormField(
                      controller: _emailController,
                      labelText: AppLocalizations.of(context)!.email,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (!ValidationFunctions.isValidSigninEmail(value)) {
                          return AppLocalizations.of(context)!.invalidEmail;
                        }
                        return null;
                      },
                      prefixIcon: Icon(
                        IconConstants.email,
                        color: Theme.of(context).colorScheme.onSecondary,
                      ),
                    ),

                    const VyraSizedBox(height: SizeConstants.s24),

                    // Password Field
                    VyraTextFormField(
                      controller: _passwordController,
                      labelText: AppLocalizations.of(context)!.password,
                      textInputAction: TextInputAction.done,
                      validator: (value) {
                        if (!ValidationFunctions.isValidSigninPassword(value)) {
                          return AppLocalizations.of(
                            context,
                          )!.passwordLengthError;
                        }
                        return null;
                      },
                      obscureText: !_isPasswordVisible,
                      prefixIcon: Icon(
                        IconConstants.password,
                        color: Theme.of(context).colorScheme.onSecondary,
                      ),
                      onPasswordToggle: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                    ),

                    const VyraSizedBox(height: SizeConstants.s32),

                    // Sign In Button
                    VyraActionButton(
                      text: AppLocalizations.of(context)!.signIn,
                      isLoading: state.status == AuthStatus.loading,
                      onTap: _handleSignIn,
                      color: ColorConstants.accent,
                    ),

                    const VyraSizedBox(height: SizeConstants.s30),

                    // Sign Up Link
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            AppLocalizations.of(context)!.dontHaveAccount,
                            style: Theme.of(
                              context,
                            ).textTheme.bodyMedium?.copyWith(
                              color: Theme.of(context).colorScheme.onSecondary,
                            ),
                          ),
                          const VyraSizedBox(width: SizeConstants.s4),
                          GestureDetector(
                            onTap: () {
                              HapticFeedback.lightImpact();
                              RouteGenerator.replaceWith(Routes.signup);
                            },
                            child: Text(
                              AppLocalizations.of(context)!.signUp,
                              style: Theme.of(
                                context,
                              ).textTheme.bodyMedium?.copyWith(
                                color: Theme.of(context).colorScheme.primary,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const VyraSizedBox(height: SizeConstants.s32),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
