import "bootstrap";
import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css";

flatpickr("#user_plant_last_watered", {
  dateFormat: "d/m/Y",
  maxDate: "today",
  // Allow input for html5 form validation
  allowInput: true
});
