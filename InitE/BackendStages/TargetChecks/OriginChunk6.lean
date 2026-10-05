import InitE.BackendStages.Encoded250
import InitE.BackendStages.TargetChecks.Initial250
import InitE.BackendStages.Encoded251
import InitE.BackendStages.TargetChecks.Initial251
import InitE.BackendStages.Encoded252
import InitE.BackendStages.TargetChecks.Initial252
import InitE.BackendStages.Encoded253
import InitE.BackendStages.TargetChecks.Initial253
import InitE.BackendStages.Encoded254
import InitE.BackendStages.TargetChecks.Initial254
import InitE.BackendStages.Encoded255
import InitE.BackendStages.TargetChecks.Initial255
import InitE.BackendStages.Encoded256
import InitE.BackendStages.TargetChecks.Initial256
import InitE.BackendStages.Encoded257
import InitE.BackendStages.TargetChecks.Initial257
import InitE.BackendStages.Encoded258
import InitE.BackendStages.TargetChecks.Initial258
import InitE.BackendStages.Encoded259
import InitE.BackendStages.TargetChecks.Initial259
import InitE.BackendStages.Encoded260
import InitE.BackendStages.TargetChecks.Initial260
import InitE.BackendStages.Encoded261
import InitE.BackendStages.TargetChecks.Initial261
import InitE.BackendStages.Encoded262
import InitE.BackendStages.TargetChecks.Initial262
import InitE.BackendStages.Encoded263
import InitE.BackendStages.TargetChecks.Initial263
import InitE.BackendStages.Encoded264
import InitE.BackendStages.TargetChecks.Initial264
import InitE.BackendStages.Encoded265
import InitE.BackendStages.TargetChecks.Initial265
import InitE.BackendStages.Encoded266
import InitE.BackendStages.TargetChecks.Initial266
import InitE.BackendStages.Encoded267
import InitE.BackendStages.TargetChecks.Initial267
import InitE.BackendStages.Encoded268
import InitE.BackendStages.TargetChecks.Initial268
import InitE.BackendStages.Encoded269
import InitE.BackendStages.TargetChecks.Initial269
import InitE.BackendStages.Encoded270
import InitE.BackendStages.TargetChecks.Initial270
import InitE.BackendStages.Encoded271
import InitE.BackendStages.TargetChecks.Initial271
import InitE.BackendStages.Encoded272
import InitE.BackendStages.TargetChecks.Initial272
import InitE.BackendStages.Encoded273
import InitE.BackendStages.TargetChecks.Initial273
import InitE.BackendStages.Encoded274
import InitE.BackendStages.TargetChecks.Initial274
import InitE.BackendStages.Encoded275
import InitE.BackendStages.TargetChecks.Initial275
import InitE.BackendStages.Encoded276
import InitE.BackendStages.TargetChecks.Initial276
import InitE.BackendStages.Encoded277
import InitE.BackendStages.TargetChecks.Initial277
import InitE.BackendStages.Encoded278
import InitE.BackendStages.TargetChecks.Initial278
import InitE.BackendStages.Encoded279
import InitE.BackendStages.TargetChecks.Initial279
import InitE.BackendStages.Encoded280
import InitE.BackendStages.TargetChecks.Initial280
import InitE.BackendStages.Encoded281
import InitE.BackendStages.TargetChecks.Initial281
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
namespace OriginChunk6
def input : LabSem.LabProgHOL 64 := [Encoded250, Encoded251, Encoded252, Encoded253, Encoded254, Encoded255, Encoded256, Encoded257, Encoded258, Encoded259, Encoded260, Encoded261, Encoded262, Encoded263, Encoded264, Encoded265, Encoded266, Encoded267, Encoded268, Encoded269, Encoded270, Encoded271, Encoded272, Encoded273, Encoded274, Encoded275, Encoded276, Encoded277, Encoded278, Encoded279, Encoded280, Encoded281]
def output : LabSem.LabProgHOL 64 := [Initial250, Initial251, Initial252, Initial253, Initial254, Initial255, Initial256, Initial257, Initial258, Initial259, Initial260, Initial261, Initial262, Initial263, Initial264, Initial265, Initial266, Initial267, Initial268, Initial269, Initial270, Initial271, Initial272, Initial273, Initial274, Initial275, Initial276, Initial277, Initial278, Initial279, Initial280, Initial281]
theorem origin_eq : input = output := by
  with_unfolding_all rfl
#print axioms origin_eq
end OriginChunk6
end InitE.BackendStages.TargetChecks
