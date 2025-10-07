import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vyra/core/utils/constants/constants.dart';
import 'package:vyra/core/utils/enums/enums.dart';
import 'package:vyra/core/utils/functions/validation_functions.dart';
import 'package:vyra/core/utils/routes/route_generator.dart';
import 'package:vyra/core/utils/widgets/widgets.dart';
import 'package:vyra/feature/auth/presentation/cubits/auth_cubit.dart';
import 'package:vyra/feature/auth/presentation/cubits/auth_state.dart';
import 'package:vyra/feature/map/presentation/cubits/map_cubit.dart';
import 'package:vyra/feature/profile/presentation/cubits/profile_cubit.dart';
import 'package:vyra/feature/profile/presentation/cubits/profile_state.dart';
import 'package:vyra/l10n/app_localizations.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _fullNameController = TextEditingController();

  bool _isPasswordVisible = false;
  DateTime? _selectedBirthDate;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _usernameController.dispose();
    _fullNameController.dispose();
    super.dispose();
  }

  Future<void> _selectBirthDate() async {
    final picked = await VyraDatePicker.show(
      context: context,
      initialDate: _selectedBirthDate,
      minimumDate: DateTime(1900),
      maximumDate: DateTime.now(),
    );

    if (picked != null) {
      setState(() {
        _selectedBirthDate = picked;
      });
    }
  }

  void _handleSignUp() {
    if (_formKey.currentState!.validate() && _selectedBirthDate != null) {
      HapticFeedback.lightImpact();
      final birthDateString =
          '${_selectedBirthDate!.year}-${_selectedBirthDate!.month.toString().padLeft(2, '0')}-${_selectedBirthDate!.day.toString().padLeft(2, '0')}';

      context.read<AuthCubit>().signup(
        username: _usernameController.text,
        fullName: _fullNameController.text,
        birthDate: birthDateString,
        email: _emailController.text,
        password: _passwordController.text,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state.status == AuthStatus.authenticated) {
              context.read<ProfileCubit>().getUserData(
                accessToken: state.accessToken!,
              );
            } else if (state.status == AuthStatus.failure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    state.error ??
                        AppLocalizations.of(context)!.anErrorOccurred,
                  ),
                  backgroundColor: ColorConstants.red,
                ),
              );
            }
          },
        ),
        BlocListener<ProfileCubit, ProfileState>(
          listener: (context, state) {
            if (state.status == ProfileStatus.loaded) {
              context.read<MapCubit>().getCurrentLocation();
              RouteGenerator.replaceWith(Routes.home);
            }
          },
        ),
      ],
      child: BlocBuilder<AuthCubit, AuthState>(
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
                      const VyraSizedBox(height: SizeConstants.s20),

                      // Header
                      Text(
                        AppLocalizations.of(context)!.createAccount,
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      const VyraSizedBox(height: SizeConstants.s8),
                      Text(
                        AppLocalizations.of(context)!.signUpDescription,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                      ),

                      const VyraSizedBox(height: SizeConstants.s20),

                      // Full Name Field
                      VyraTextFormField(
                        controller: _fullNameController,
                        labelText: AppLocalizations.of(context)!.fullName,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (!ValidationFunctions.isValidFullName(value)) {
                            return AppLocalizations.of(
                              context,
                            )!.fullNameLengthError;
                          }
                          return null;
                        },
                        prefixIcon: Icon(
                          IconConstants.fullName,
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                      ),

                      const VyraSizedBox(height: SizeConstants.s15),

                      // Username Field
                      VyraTextFormField(
                        controller: _usernameController,
                        labelText: AppLocalizations.of(context)!.username,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (!ValidationFunctions.isValidUsername(value)) {
                            return AppLocalizations.of(
                              context,
                            )!.usernameLengthError;
                          }
                          return null;
                        },
                        prefixIcon: Icon(
                          IconConstants.username,
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                      ),

                      const VyraSizedBox(height: SizeConstants.s15),

                      // Email Field
                      VyraTextFormField(
                        controller: _emailController,
                        labelText: AppLocalizations.of(context)!.email,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (!ValidationFunctions.isValidEmail(value)) {
                            return AppLocalizations.of(context)!.invalidEmail;
                          }
                          return null;
                        },
                        prefixIcon: Icon(
                          IconConstants.email,
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                      ),

                      const VyraSizedBox(height: SizeConstants.s20),

                      // Birth Date Field
                      GestureDetector(
                        onTap: _selectBirthDate,
                        child: Container(
                          height: SizeConstants.s58,
                          padding: const EdgeInsets.symmetric(
                            horizontal: SizeConstants.s16,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Theme.of(
                                context,
                              ).colorScheme.onSecondary.withValues(alpha: 0.3),
                            ),
                            borderRadius: BorderRadius.circular(
                              SizeConstants.s8,
                            ),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                IconConstants.birthDate,
                                color:
                                    Theme.of(context).colorScheme.onSecondary,
                                size: SizeConstants.s20,
                              ),
                              const VyraSizedBox(width: SizeConstants.s12),
                              Expanded(
                                child: Text(
                                  _selectedBirthDate == null
                                      ? AppLocalizations.of(
                                        context,
                                      )!.selectBirthDate
                                      : '${_selectedBirthDate!.day}/${_selectedBirthDate!.month}/${_selectedBirthDate!.year}',
                                  style: Theme.of(
                                    context,
                                  ).textTheme.labelMedium?.copyWith(
                                    color:
                                        _selectedBirthDate == null
                                            ? Theme.of(context)
                                                .colorScheme
                                                .onSecondary
                                                .withValues(alpha: 0.6)
                                            : Theme.of(
                                              context,
                                            ).colorScheme.secondary,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                color:
                                    Theme.of(context).colorScheme.onSecondary,
                              ),
                            ],
                          ),
                        ),
                      ),
                      if (_selectedBirthDate == null)
                        Padding(
                          padding: const EdgeInsets.only(top: SizeConstants.s8),
                          child: Text(
                            AppLocalizations.of(context)!.birthDateRequired,
                            style: Theme.of(
                              context,
                            ).textTheme.bodySmall?.copyWith(
                              color: Theme.of(context).colorScheme.error,
                            ),
                          ),
                        ),

                      const VyraSizedBox(height: SizeConstants.s20),

                      // Password Field
                      VyraTextFormField(
                        controller: _passwordController,
                        labelText: AppLocalizations.of(context)!.password,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (!ValidationFunctions.isValidPassword(value)) {
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

                      const VyraSizedBox(height: SizeConstants.s20),

                      // Confirm Password Field
                      VyraTextFormField(
                        controller: _confirmPasswordController,
                        labelText:
                            AppLocalizations.of(context)!.confirmPassword,
                        textInputAction: TextInputAction.done,
                        validator: (value) {
                          if (!ValidationFunctions.isValidPasswordConfirmation(
                            _passwordController.text,
                            value,
                          )) {
                            return AppLocalizations.of(
                              context,
                            )!.passwordsDoNotMatch;
                          }
                          return null;
                        },
                        obscureText: !_isPasswordVisible,
                        prefixIcon: Icon(
                          IconConstants.confirmPassword,
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                        onPasswordToggle: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                      ),

                      const VyraSizedBox(height: SizeConstants.s40),

                      // Sign Up Button
                      VyraActionButton(
                        text: AppLocalizations.of(context)!.signUp,
                        isLoading: state.status == AuthStatus.loading,
                        onTap: _handleSignUp,
                        color: ColorConstants.accent,
                      ),

                      const VyraSizedBox(height: SizeConstants.s48),

                      // Sign In Link
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              AppLocalizations.of(context)!.alreadyHaveAccount,
                              style: Theme.of(
                                context,
                              ).textTheme.bodyMedium?.copyWith(
                                color:
                                    Theme.of(context).colorScheme.onSecondary,
                              ),
                            ),
                            const VyraSizedBox(width: SizeConstants.s4),
                            GestureDetector(
                              onTap: () {
                                HapticFeedback.lightImpact();
                                RouteGenerator.replaceWith(Routes.signin);
                              },
                              child: Text(
                                AppLocalizations.of(context)!.signIn,
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
      ),
    );
  }
}
