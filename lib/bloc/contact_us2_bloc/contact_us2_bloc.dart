import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'contact_us2_event.dart';
part 'contact_us2_state.dart';

class ContactUs2Bloc extends Bloc<ContactUs2Event, ContactUs2State> {
  ContactUs2Bloc() : super(ContactUs2Initial()) {
    on<ContactUs2Event>((event, emit) {
      // TODO: implement event handler
    });
  }
}
