package uk.gov.hmcts.cp.config;

import org.junit.jupiter.api.Test;
import uk.gov.hmcts.cp.openapi.api.CourtHouseApi;
import uk.gov.hmcts.cp.openapi.model.Address;
import uk.gov.hmcts.cp.openapi.model.CourtHouseResponse;
import uk.gov.hmcts.cp.openapi.model.CourtRoom;
import uk.gov.hmcts.cp.openapi.model.ErrorResponse;
import uk.gov.hmcts.cp.openapi.model.VenueContact;

import static org.assertj.core.api.Assertions.assertThat;

public class OpenApiObjectsTest {

    @Test
    void generated_error_response_should_have_expected_fields() {
        assertThat(ErrorResponse.class).hasDeclaredFields("error", "details", "message", "timestamp", "traceId");
    }

    @Test
    void generated_address_should_have_expected_fields() {
        assertThat(Address.class).hasDeclaredFields("address1", "address2", "postalCode", "country");
    }

    @Test
    void generated_court_house_should_have_expected_fields() {
        assertThat(CourtHouseResponse.class).hasDeclaredFields("courtHouseType", "courtHouseCode", "courtHouseName", "address");
    }

    @Test
    void generated_court_room_should_have_expected_fields() {
        assertThat(CourtRoom.class).hasDeclaredFields("courtRoomId", "courtRoomName");
    }

    @Test
    void generated_venue_contact_should_have_expected_fields() {
        assertThat(VenueContact.class).hasDeclaredFields("venueTelephone", "venueEmail", "primaryContactName", "venueSupport");
    }

    @Test
    void generated_api_should_have_expected_methods() {
        assertThat(CourtHouseApi.PATH_GET_COURTHOUSE_BY_COURT_ID_AND_COURT_ROOM_ID).isEqualTo("/courthouses/{court_id}/courtrooms/{court_room_id}");
        assertThat(CourtHouseApi.class).hasDeclaredMethods("getCourthouseByCourtIdAndCourtRoomId");
    }
}
