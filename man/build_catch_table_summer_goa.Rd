% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/build_catch_table_summer_goa.R
\name{build_catch_table_summer_goa}
\alias{build_catch_table_summer_goa}
\title{build_catch_table_summer_goa}
\usage{
build_catch_table_summer_goa(
  catch_data,
  specimen_data,
  scaling_hauls_list = NULL
)
}
\arguments{
\item{catch_data}{a dataframe returned from the 'get_catch_table_data.R' function, summer GOA cruise reports}

\item{specimen_data}{a dataframe returned from the 'get_specimen_table_data.R' function, summer GOA cruise reports}

\item{scaling_hauls_list}{an (optional) numeric vector of hauls that were used to scale backscatter in your analysis.
These hauls are returned from the \code{scaling_hauls} dataframe in summer GOA cruise reports.
If not specified, all hauls in the survey will be reported in tables.}
}
\value{
A list (or multiple lists, if there are multiple gear types)
with two items: item 1 is the Flextable table object, item 2 is the table caption.
}
\description{
build the catch by species and numbers by gear survey-wide; create a table that is in the format
used in the Gulf of Alaska summer reports. This differs from the winter version in that it creates tables
for the entire survey, as opposed to by survey region. It also differs in the format of the input data.
}
\examples{
\dontrun{
#build the tables and captions
catch_tables = build_catch_table_summer_goa(catch_data = raw_catch_data,
                                            specimen_data = specimen_measurements_data)

#unpack the tables and the captions
table_1 = catch_tables[[1]][[1]]
caption_1 = catch_tables[[1]][[2]]

table_2 = catch_tables[[2]][[1]]
caption_2 = catch_tables[[2]][[2]]

#build the tables and captions
catch_tables = build_catch_table_summer_goa(catch_data = raw_catch_data,
                                            specimen_data = specimen_measurements_data,
                                            scaling_hauls_list = scaling_hauls$EVENT_ID)


print the tables and the captions
for (i in 1:length(catch_tables)){

 #get table
  print(catch_tables[[i]][[1]])
  #get caption
  print(catch_tables[[i]][[2]])

}
}
}
\author{
Mike Levine
}