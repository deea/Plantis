import "bootstrap";
import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css";
import moment from "moment"
import fullCalendar from "fullcalendar"

flatpickr("#user_plant_last_watered", {
  dateFormat: "d/m/Y",
  maxDate: "today",
  // Allow input for html5 form validation
  allowInput: true
});
const calendar = document.querySelector('#calendar')
if (calendar) {
  const events = JSON.parse(calendar.dataset.events)
  $('#calendar').fullCalendar({
    events: events.map((item) => {
      return {
        title: `Water ${item[0]}`,
        start: item[1]
      }
    })
  });
}
