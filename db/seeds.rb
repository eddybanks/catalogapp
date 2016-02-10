# This file
years = {year1: {name: "2015-2016", homepage_header: "Welcome to UNM’s Online Catalog",
            homepage_text: "The online Catalog is the University’s primary, comprehensive single source of departmental, college and university-wide information related to academic programs. Courses, degree programs, and policies that govern progress towards completion of a degree are described in the Catalog. Students are responsible for knowing and understanding the contents of the Catalog they are following. The Catalog provides a broad spectrum of course information in a consistent format and is a fully searchable and user-friendly online Catalog.

Whether you are a prospective student or enrolled at UNM, you will find we have provided you with a powerful set of tools to help you quickly locate and track details for undergraduate and graduate programs and courses that are important to you. You also will find links to other useful information. Access to prior editions of the Catalog is available in the archives section of this site.

We think you will find using this online Catalog to be easy and enjoyable!

Disclaimer: The University of New Mexico reserves the right to make changes in the course offerings, degree requirements, charges, regulations, and procedures contained herein as educational and financial considerations require, subject to and consistent with established procedures and authorizations for making such change."}
}

years.each do |k, v|
   Year.create(name: v[:name], homepage_header: v[:homepage_header], homepage_text: v[:homepage_text])
 end
