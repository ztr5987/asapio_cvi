sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'users/test/integration/FirstJourney',
		'users/test/integration/pages/UserSuppliersList',
		'users/test/integration/pages/UserSuppliersObjectPage'
    ],
    function(JourneyRunner, opaJourney, UserSuppliersList, UserSuppliersObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('users') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheUserSuppliersList: UserSuppliersList,
					onTheUserSuppliersObjectPage: UserSuppliersObjectPage
                }
            },
            opaJourney.run
        );
    }
);