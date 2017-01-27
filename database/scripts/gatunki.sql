create table ##dane (id int, produkt nvarchar(30))



BEGIN TRANSACTION;-- początek transakcji



BEGIN TRY

    -- Insert modyfikacja danych


INSERT INTO `gatuneki_enum`(`nazwa`) VALUES ('indie rock');

INSERT INTO `gatuneki_enum`(`nazwa`) VALUES ('punk rock');

INSERT INTO `gatuneki_enum`(`nazwa`) VALUES ('metal');

INSERT INTO `gatuneki_enum`(`nazwa`) VALUES ('alternative rock');

    -- błąd

    SELECT 2/0



END TRY

BEGIN CATCH

    SELECT

        ERROR_NUMBER() AS ErrorNumber

        ,ERROR_SEVERITY() AS ErrorSeverity

        ,ERROR_STATE() AS ErrorState

        ,ERROR_PROCEDURE() AS ErrorProcedure

        ,ERROR_LINE() AS ErrorLine

        ,ERROR_MESSAGE() AS ErrorMessage;



    IF @@TRANCOUNT > 0

        ROLLBACK TRANSACTION;-- wycofywanie zmian

END CATCH;



IF @@TRANCOUNT > 0

    COMMIT TRANSACTION;-- akceptacja zmian





SELECT * FROM ##dane
