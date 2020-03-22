{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-missing-fields #-}
{-# OPTIONS_GHC -fno-warn-missing-signatures #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-----------------------------------------------------------------
-- Autogenerated by Thrift Compiler (0.14.0)                      --
--                                                             --
-- DO NOT EDIT UNLESS YOU ARE SURE YOU KNOW WHAT YOU ARE DOING --
-----------------------------------------------------------------

module AuthService_Client(normalizePhoneNumber,respondE2EELoginRequest,confirmE2EELogin,logoutZ,loginZ,issueTokenForAccountMigrationSettings,issueTokenForAccountMigration,verifyQrcodeWithE2EE) where
import qualified Data.IORef as R
import Prelude (($), (.), (>>=), (==), (++))
import qualified Prelude as P
import qualified Control.Exception as X
import qualified Control.Monad as M ( liftM, ap, when )
import Data.Functor ( (<$>) )
import qualified Data.ByteString.Lazy as LBS
import qualified Data.Hashable as H
import qualified Data.Int as I
import qualified Data.Maybe as M (catMaybes)
import qualified Data.Text.Lazy.Encoding as E ( decodeUtf8, encodeUtf8 )
import qualified Data.Text.Lazy as LT
import qualified GHC.Generics as G (Generic)
import qualified Data.Typeable as TY ( Typeable )
import qualified Data.HashMap.Strict as Map
import qualified Data.HashSet as Set
import qualified Data.Vector as Vector
import qualified Test.QuickCheck.Arbitrary as QC ( Arbitrary(..) )
import qualified Test.QuickCheck as QC ( elements )

import qualified Thrift as T
import qualified Thrift.Types as T
import qualified Thrift.Arbitraries as T


import Line_Types
import AuthService
seqid = R.newIORef 0
normalizePhoneNumber (ip,op) arg_countryCode arg_phoneNumber arg_countryCodeHint = do
  send_normalizePhoneNumber op arg_countryCode arg_phoneNumber arg_countryCodeHint
  recv_normalizePhoneNumber ip
send_normalizePhoneNumber op arg_countryCode arg_phoneNumber arg_countryCodeHint = do
  seq <- seqid
  seqn <- R.readIORef seq
  T.writeMessage op ("normalizePhoneNumber", T.M_CALL, seqn) $
    write_NormalizePhoneNumber_args op (NormalizePhoneNumber_args{normalizePhoneNumber_args_countryCode=arg_countryCode,normalizePhoneNumber_args_phoneNumber=arg_phoneNumber,normalizePhoneNumber_args_countryCodeHint=arg_countryCodeHint})
recv_normalizePhoneNumber ip = do
  T.readMessage ip $ \(fname, mtype, rseqid) -> do
    M.when (mtype == T.M_EXCEPTION) $ do { exn <- T.readAppExn ip ; X.throw exn }
    res <- read_NormalizePhoneNumber_result ip
    P.maybe (P.return ()) X.throw (normalizePhoneNumber_result_e res)
    P.return $ normalizePhoneNumber_result_success res
respondE2EELoginRequest (ip,op) arg_verifier arg_publicKey arg_encryptedKeyChain arg_hashKeyChain arg_errorCode = do
  send_respondE2EELoginRequest op arg_verifier arg_publicKey arg_encryptedKeyChain arg_hashKeyChain arg_errorCode
  recv_respondE2EELoginRequest ip
send_respondE2EELoginRequest op arg_verifier arg_publicKey arg_encryptedKeyChain arg_hashKeyChain arg_errorCode = do
  seq <- seqid
  seqn <- R.readIORef seq
  T.writeMessage op ("respondE2EELoginRequest", T.M_CALL, seqn) $
    write_RespondE2EELoginRequest_args op (RespondE2EELoginRequest_args{respondE2EELoginRequest_args_verifier=arg_verifier,respondE2EELoginRequest_args_publicKey=arg_publicKey,respondE2EELoginRequest_args_encryptedKeyChain=arg_encryptedKeyChain,respondE2EELoginRequest_args_hashKeyChain=arg_hashKeyChain,respondE2EELoginRequest_args_errorCode=arg_errorCode})
recv_respondE2EELoginRequest ip = do
  T.readMessage ip $ \(fname, mtype, rseqid) -> do
    M.when (mtype == T.M_EXCEPTION) $ do { exn <- T.readAppExn ip ; X.throw exn }
    res <- read_RespondE2EELoginRequest_result ip
    P.maybe (P.return ()) X.throw (respondE2EELoginRequest_result_e res)
    P.return ()
confirmE2EELogin (ip,op) arg_verifier arg_deviceSecret = do
  send_confirmE2EELogin op arg_verifier arg_deviceSecret
  recv_confirmE2EELogin ip
send_confirmE2EELogin op arg_verifier arg_deviceSecret = do
  seq <- seqid
  seqn <- R.readIORef seq
  T.writeMessage op ("confirmE2EELogin", T.M_CALL, seqn) $
    write_ConfirmE2EELogin_args op (ConfirmE2EELogin_args{confirmE2EELogin_args_verifier=arg_verifier,confirmE2EELogin_args_deviceSecret=arg_deviceSecret})
recv_confirmE2EELogin ip = do
  T.readMessage ip $ \(fname, mtype, rseqid) -> do
    M.when (mtype == T.M_EXCEPTION) $ do { exn <- T.readAppExn ip ; X.throw exn }
    res <- read_ConfirmE2EELogin_result ip
    P.maybe (P.return ()) X.throw (confirmE2EELogin_result_e res)
    P.return $ confirmE2EELogin_result_success res
logoutZ (ip,op) = do
  send_logoutZ op
  recv_logoutZ ip
send_logoutZ op = do
  seq <- seqid
  seqn <- R.readIORef seq
  T.writeMessage op ("logoutZ", T.M_CALL, seqn) $
    write_LogoutZ_args op (LogoutZ_args{})
recv_logoutZ ip = do
  T.readMessage ip $ \(fname, mtype, rseqid) -> do
    M.when (mtype == T.M_EXCEPTION) $ do { exn <- T.readAppExn ip ; X.throw exn }
    res <- read_LogoutZ_result ip
    P.maybe (P.return ()) X.throw (logoutZ_result_e res)
    P.return ()
loginZ (ip,op) arg_loginRequest = do
  send_loginZ op arg_loginRequest
  recv_loginZ ip
send_loginZ op arg_loginRequest = do
  seq <- seqid
  seqn <- R.readIORef seq
  T.writeMessage op ("loginZ", T.M_CALL, seqn) $
    write_LoginZ_args op (LoginZ_args{loginZ_args_loginRequest=arg_loginRequest})
recv_loginZ ip = do
  T.readMessage ip $ \(fname, mtype, rseqid) -> do
    M.when (mtype == T.M_EXCEPTION) $ do { exn <- T.readAppExn ip ; X.throw exn }
    res <- read_LoginZ_result ip
    P.maybe (P.return ()) X.throw (loginZ_result_e res)
    P.return $ loginZ_result_success res
issueTokenForAccountMigrationSettings (ip,op) arg_enforce = do
  send_issueTokenForAccountMigrationSettings op arg_enforce
  recv_issueTokenForAccountMigrationSettings ip
send_issueTokenForAccountMigrationSettings op arg_enforce = do
  seq <- seqid
  seqn <- R.readIORef seq
  T.writeMessage op ("issueTokenForAccountMigrationSettings", T.M_CALL, seqn) $
    write_IssueTokenForAccountMigrationSettings_args op (IssueTokenForAccountMigrationSettings_args{issueTokenForAccountMigrationSettings_args_enforce=arg_enforce})
recv_issueTokenForAccountMigrationSettings ip = do
  T.readMessage ip $ \(fname, mtype, rseqid) -> do
    M.when (mtype == T.M_EXCEPTION) $ do { exn <- T.readAppExn ip ; X.throw exn }
    res <- read_IssueTokenForAccountMigrationSettings_result ip
    P.maybe (P.return ()) X.throw (issueTokenForAccountMigrationSettings_result_e res)
    P.return $ issueTokenForAccountMigrationSettings_result_success res
issueTokenForAccountMigration (ip,op) arg_migrationSessionId = do
  send_issueTokenForAccountMigration op arg_migrationSessionId
  recv_issueTokenForAccountMigration ip
send_issueTokenForAccountMigration op arg_migrationSessionId = do
  seq <- seqid
  seqn <- R.readIORef seq
  T.writeMessage op ("issueTokenForAccountMigration", T.M_CALL, seqn) $
    write_IssueTokenForAccountMigration_args op (IssueTokenForAccountMigration_args{issueTokenForAccountMigration_args_migrationSessionId=arg_migrationSessionId})
recv_issueTokenForAccountMigration ip = do
  T.readMessage ip $ \(fname, mtype, rseqid) -> do
    M.when (mtype == T.M_EXCEPTION) $ do { exn <- T.readAppExn ip ; X.throw exn }
    res <- read_IssueTokenForAccountMigration_result ip
    P.maybe (P.return ()) X.throw (issueTokenForAccountMigration_result_e res)
    P.return $ issueTokenForAccountMigration_result_success res
verifyQrcodeWithE2EE (ip,op) arg_verifier arg_pinCode arg_errorCode arg_publicKey arg_encryptedKeyChain arg_hashKeyChain = do
  send_verifyQrcodeWithE2EE op arg_verifier arg_pinCode arg_errorCode arg_publicKey arg_encryptedKeyChain arg_hashKeyChain
  recv_verifyQrcodeWithE2EE ip
send_verifyQrcodeWithE2EE op arg_verifier arg_pinCode arg_errorCode arg_publicKey arg_encryptedKeyChain arg_hashKeyChain = do
  seq <- seqid
  seqn <- R.readIORef seq
  T.writeMessage op ("verifyQrcodeWithE2EE", T.M_CALL, seqn) $
    write_VerifyQrcodeWithE2EE_args op (VerifyQrcodeWithE2EE_args{verifyQrcodeWithE2EE_args_verifier=arg_verifier,verifyQrcodeWithE2EE_args_pinCode=arg_pinCode,verifyQrcodeWithE2EE_args_errorCode=arg_errorCode,verifyQrcodeWithE2EE_args_publicKey=arg_publicKey,verifyQrcodeWithE2EE_args_encryptedKeyChain=arg_encryptedKeyChain,verifyQrcodeWithE2EE_args_hashKeyChain=arg_hashKeyChain})
recv_verifyQrcodeWithE2EE ip = do
  T.readMessage ip $ \(fname, mtype, rseqid) -> do
    M.when (mtype == T.M_EXCEPTION) $ do { exn <- T.readAppExn ip ; X.throw exn }
    res <- read_VerifyQrcodeWithE2EE_result ip
    P.maybe (P.return ()) X.throw (verifyQrcodeWithE2EE_result_e res)
    P.return $ verifyQrcodeWithE2EE_result_success res