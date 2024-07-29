String getSpecialityImage(String speciality) {
  switch (speciality) {
    case 'Cardiology':
      return 'assets/images/speciality/cardiology.png';

    case 'Neurology':
      return 'assets/images/speciality/neurology.png';

    case 'Dermatology':
      return 'assets/images/speciality/dermatology.png';

    case 'Ophthalmology':
      return 'assets/images/speciality/optometry.png';

    case 'Orthopedics':
      return 'assets/images/speciality/orthopedics.png';

    case 'Pediatrics':
      return 'assets/images/speciality/pediatrics.png';

    case 'Gynecology':
      return 'assets/images/speciality/gynecology.png';

    case 'Urology':
      return 'assets/images/speciality/urology.png';

    case 'Gastroenterology':
      return 'assets/images/speciality/gastroenterology.png';

    case 'Psychiatry':
      return 'assets/images/speciality/psychiatry.png';

    default:
      return 'assets/images/speciality/general.png';
  }
}
