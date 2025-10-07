extension DateExtension on String {
  String toFormattedDate() {
    try {
      final date = DateTime.parse(this);
      final months = [
        'January',
        'February',
        'March',
        'April',
        'May',
        'June',
        'July',
        'August',
        'September',
        'October',
        'November',
        'December',
      ];

      return '${date.day} ${months[date.month - 1]} ${date.year}';
    } catch (e) {
      return this;
    }
  }
}
