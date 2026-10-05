import InitE.BackendStages.Encoded154
import InitE.BackendStages.TargetChecks.Initial154
import InitE.BackendStages.Encoded155
import InitE.BackendStages.TargetChecks.Initial155
import InitE.BackendStages.Encoded156
import InitE.BackendStages.TargetChecks.Initial156
import InitE.BackendStages.Encoded157
import InitE.BackendStages.TargetChecks.Initial157
import InitE.BackendStages.Encoded158
import InitE.BackendStages.TargetChecks.Initial158
import InitE.BackendStages.Encoded159
import InitE.BackendStages.TargetChecks.Initial159
import InitE.BackendStages.Encoded160
import InitE.BackendStages.TargetChecks.Initial160
import InitE.BackendStages.Encoded161
import InitE.BackendStages.TargetChecks.Initial161
import InitE.BackendStages.Encoded162
import InitE.BackendStages.TargetChecks.Initial162
import InitE.BackendStages.Encoded163
import InitE.BackendStages.TargetChecks.Initial163
import InitE.BackendStages.Encoded164
import InitE.BackendStages.TargetChecks.Initial164
import InitE.BackendStages.Encoded165
import InitE.BackendStages.TargetChecks.Initial165
import InitE.BackendStages.Encoded166
import InitE.BackendStages.TargetChecks.Initial166
import InitE.BackendStages.Encoded167
import InitE.BackendStages.TargetChecks.Initial167
import InitE.BackendStages.Encoded168
import InitE.BackendStages.TargetChecks.Initial168
import InitE.BackendStages.Encoded169
import InitE.BackendStages.TargetChecks.Initial169
import InitE.BackendStages.Encoded170
import InitE.BackendStages.TargetChecks.Initial170
import InitE.BackendStages.Encoded171
import InitE.BackendStages.TargetChecks.Initial171
import InitE.BackendStages.Encoded172
import InitE.BackendStages.TargetChecks.Initial172
import InitE.BackendStages.Encoded173
import InitE.BackendStages.TargetChecks.Initial173
import InitE.BackendStages.Encoded174
import InitE.BackendStages.TargetChecks.Initial174
import InitE.BackendStages.Encoded175
import InitE.BackendStages.TargetChecks.Initial175
import InitE.BackendStages.Encoded176
import InitE.BackendStages.TargetChecks.Initial176
import InitE.BackendStages.Encoded177
import InitE.BackendStages.TargetChecks.Initial177
import InitE.BackendStages.Encoded178
import InitE.BackendStages.TargetChecks.Initial178
import InitE.BackendStages.Encoded179
import InitE.BackendStages.TargetChecks.Initial179
import InitE.BackendStages.Encoded180
import InitE.BackendStages.TargetChecks.Initial180
import InitE.BackendStages.Encoded181
import InitE.BackendStages.TargetChecks.Initial181
import InitE.BackendStages.Encoded182
import InitE.BackendStages.TargetChecks.Initial182
import InitE.BackendStages.Encoded183
import InitE.BackendStages.TargetChecks.Initial183
import InitE.BackendStages.Encoded184
import InitE.BackendStages.TargetChecks.Initial184
import InitE.BackendStages.Encoded185
import InitE.BackendStages.TargetChecks.Initial185
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
namespace OriginChunk3
def input : LabSem.LabProgHOL 64 := [Encoded154, Encoded155, Encoded156, Encoded157, Encoded158, Encoded159, Encoded160, Encoded161, Encoded162, Encoded163, Encoded164, Encoded165, Encoded166, Encoded167, Encoded168, Encoded169, Encoded170, Encoded171, Encoded172, Encoded173, Encoded174, Encoded175, Encoded176, Encoded177, Encoded178, Encoded179, Encoded180, Encoded181, Encoded182, Encoded183, Encoded184, Encoded185]
def output : LabSem.LabProgHOL 64 := [Initial154, Initial155, Initial156, Initial157, Initial158, Initial159, Initial160, Initial161, Initial162, Initial163, Initial164, Initial165, Initial166, Initial167, Initial168, Initial169, Initial170, Initial171, Initial172, Initial173, Initial174, Initial175, Initial176, Initial177, Initial178, Initial179, Initial180, Initial181, Initial182, Initial183, Initial184, Initial185]
theorem origin_eq : input = output := by
  with_unfolding_all rfl
#print axioms origin_eq
end OriginChunk3
end InitE.BackendStages.TargetChecks
