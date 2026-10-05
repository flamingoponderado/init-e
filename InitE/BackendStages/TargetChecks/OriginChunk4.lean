import InitE.BackendStages.Encoded186
import InitE.BackendStages.TargetChecks.Initial186
import InitE.BackendStages.Encoded187
import InitE.BackendStages.TargetChecks.Initial187
import InitE.BackendStages.Encoded188
import InitE.BackendStages.TargetChecks.Initial188
import InitE.BackendStages.Encoded189
import InitE.BackendStages.TargetChecks.Initial189
import InitE.BackendStages.Encoded190
import InitE.BackendStages.TargetChecks.Initial190
import InitE.BackendStages.Encoded191
import InitE.BackendStages.TargetChecks.Initial191
import InitE.BackendStages.Encoded192
import InitE.BackendStages.TargetChecks.Initial192
import InitE.BackendStages.Encoded193
import InitE.BackendStages.TargetChecks.Initial193
import InitE.BackendStages.Encoded194
import InitE.BackendStages.TargetChecks.Initial194
import InitE.BackendStages.Encoded195
import InitE.BackendStages.TargetChecks.Initial195
import InitE.BackendStages.Encoded196
import InitE.BackendStages.TargetChecks.Initial196
import InitE.BackendStages.Encoded197
import InitE.BackendStages.TargetChecks.Initial197
import InitE.BackendStages.Encoded198
import InitE.BackendStages.TargetChecks.Initial198
import InitE.BackendStages.Encoded199
import InitE.BackendStages.TargetChecks.Initial199
import InitE.BackendStages.Encoded200
import InitE.BackendStages.TargetChecks.Initial200
import InitE.BackendStages.Encoded201
import InitE.BackendStages.TargetChecks.Initial201
import InitE.BackendStages.Encoded202
import InitE.BackendStages.TargetChecks.Initial202
import InitE.BackendStages.Encoded203
import InitE.BackendStages.TargetChecks.Initial203
import InitE.BackendStages.Encoded204
import InitE.BackendStages.TargetChecks.Initial204
import InitE.BackendStages.Encoded205
import InitE.BackendStages.TargetChecks.Initial205
import InitE.BackendStages.Encoded206
import InitE.BackendStages.TargetChecks.Initial206
import InitE.BackendStages.Encoded207
import InitE.BackendStages.TargetChecks.Initial207
import InitE.BackendStages.Encoded208
import InitE.BackendStages.TargetChecks.Initial208
import InitE.BackendStages.Encoded209
import InitE.BackendStages.TargetChecks.Initial209
import InitE.BackendStages.Encoded210
import InitE.BackendStages.TargetChecks.Initial210
import InitE.BackendStages.Encoded211
import InitE.BackendStages.TargetChecks.Initial211
import InitE.BackendStages.Encoded212
import InitE.BackendStages.TargetChecks.Initial212
import InitE.BackendStages.Encoded213
import InitE.BackendStages.TargetChecks.Initial213
import InitE.BackendStages.Encoded214
import InitE.BackendStages.TargetChecks.Initial214
import InitE.BackendStages.Encoded215
import InitE.BackendStages.TargetChecks.Initial215
import InitE.BackendStages.Encoded216
import InitE.BackendStages.TargetChecks.Initial216
import InitE.BackendStages.Encoded217
import InitE.BackendStages.TargetChecks.Initial217
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
namespace OriginChunk4
def input : LabSem.LabProgHOL 64 := [Encoded186, Encoded187, Encoded188, Encoded189, Encoded190, Encoded191, Encoded192, Encoded193, Encoded194, Encoded195, Encoded196, Encoded197, Encoded198, Encoded199, Encoded200, Encoded201, Encoded202, Encoded203, Encoded204, Encoded205, Encoded206, Encoded207, Encoded208, Encoded209, Encoded210, Encoded211, Encoded212, Encoded213, Encoded214, Encoded215, Encoded216, Encoded217]
def output : LabSem.LabProgHOL 64 := [Initial186, Initial187, Initial188, Initial189, Initial190, Initial191, Initial192, Initial193, Initial194, Initial195, Initial196, Initial197, Initial198, Initial199, Initial200, Initial201, Initial202, Initial203, Initial204, Initial205, Initial206, Initial207, Initial208, Initial209, Initial210, Initial211, Initial212, Initial213, Initial214, Initial215, Initial216, Initial217]
theorem origin_eq : input = output := by
  with_unfolding_all rfl
#print axioms origin_eq
end OriginChunk4
end InitE.BackendStages.TargetChecks
