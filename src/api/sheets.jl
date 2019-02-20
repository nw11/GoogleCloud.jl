"""
Google Sheets API
"""
module _sheets

export sheets

using ..api
using ...root

"""
Google Cloud Container Engine API root.
"""
sheets = APIRoot(
    "https://sheets.googleapis.com/v4",
	 Dict( "spreadsheets" => "Google Sheets Access Point.");
	# spreadsheet = APIResource("spreadsheets"; get=APIMethod(:GET, "{spreadsheetId}/{includeGridData}/{ranges}", "Returns metadata and any requested data for the specified sheet.") ))
	spreadsheet = APIResource("spreadsheets";
	                  get=APIMethod( :GET, "{spreadsheetId}/values/{ranges}", "Returns metadata and any requested data for the specified sheet.",
									  Dict(:majorDimension => "ROWS") ) ))
end
