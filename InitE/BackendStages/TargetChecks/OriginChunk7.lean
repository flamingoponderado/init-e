import InitE.BackendStages.Encoded282
import InitE.BackendStages.TargetChecks.Initial282
import InitE.BackendStages.Encoded283
import InitE.BackendStages.TargetChecks.Initial283
import InitE.BackendStages.Encoded284
import InitE.BackendStages.TargetChecks.Initial284
import InitE.BackendStages.Encoded285
import InitE.BackendStages.TargetChecks.Initial285
import InitE.BackendStages.Encoded286
import InitE.BackendStages.TargetChecks.Initial286
import InitE.BackendStages.Encoded287
import InitE.BackendStages.TargetChecks.Initial287
import InitE.BackendStages.Encoded288
import InitE.BackendStages.TargetChecks.Initial288
import InitE.BackendStages.Encoded289
import InitE.BackendStages.TargetChecks.Initial289
import InitE.BackendStages.Encoded290
import InitE.BackendStages.TargetChecks.Initial290
import InitE.BackendStages.Encoded291
import InitE.BackendStages.TargetChecks.Initial291
import InitE.BackendStages.Encoded292
import InitE.BackendStages.TargetChecks.Initial292
import InitE.BackendStages.Encoded293
import InitE.BackendStages.TargetChecks.Initial293
import InitE.BackendStages.Encoded294
import InitE.BackendStages.TargetChecks.Initial294
import InitE.BackendStages.Encoded295
import InitE.BackendStages.TargetChecks.Initial295
import InitE.BackendStages.Encoded296
import InitE.BackendStages.TargetChecks.Initial296
import InitE.BackendStages.Encoded297
import InitE.BackendStages.TargetChecks.Initial297
import InitE.BackendStages.Encoded298
import InitE.BackendStages.TargetChecks.Initial298
import InitE.BackendStages.Encoded299
import InitE.BackendStages.TargetChecks.Initial299
import InitE.BackendStages.Encoded300
import InitE.BackendStages.TargetChecks.Initial300
import InitE.BackendStages.Encoded301
import InitE.BackendStages.TargetChecks.Initial301
import InitE.BackendStages.Encoded302
import InitE.BackendStages.TargetChecks.Initial302
import InitE.BackendStages.Encoded303
import InitE.BackendStages.TargetChecks.Initial303
import InitE.BackendStages.Encoded304
import InitE.BackendStages.TargetChecks.Initial304
import InitE.BackendStages.Encoded305
import InitE.BackendStages.TargetChecks.Initial305
import InitE.BackendStages.Encoded306
import InitE.BackendStages.TargetChecks.Initial306
import InitE.BackendStages.Encoded307
import InitE.BackendStages.TargetChecks.Initial307
import InitE.BackendStages.Encoded308
import InitE.BackendStages.TargetChecks.Initial308
import InitE.BackendStages.Encoded309
import InitE.BackendStages.TargetChecks.Initial309
import InitE.BackendStages.Encoded310
import InitE.BackendStages.TargetChecks.Initial310
import InitE.BackendStages.Encoded311
import InitE.BackendStages.TargetChecks.Initial311
import InitE.BackendStages.Encoded312
import InitE.BackendStages.TargetChecks.Initial312
import InitE.BackendStages.Encoded313
import InitE.BackendStages.TargetChecks.Initial313
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
namespace OriginChunk7
def input : LabSem.LabProgHOL 64 := [Encoded282, Encoded283, Encoded284, Encoded285, Encoded286, Encoded287, Encoded288, Encoded289, Encoded290, Encoded291, Encoded292, Encoded293, Encoded294, Encoded295, Encoded296, Encoded297, Encoded298, Encoded299, Encoded300, Encoded301, Encoded302, Encoded303, Encoded304, Encoded305, Encoded306, Encoded307, Encoded308, Encoded309, Encoded310, Encoded311, Encoded312, Encoded313]
def output : LabSem.LabProgHOL 64 := [Initial282, Initial283, Initial284, Initial285, Initial286, Initial287, Initial288, Initial289, Initial290, Initial291, Initial292, Initial293, Initial294, Initial295, Initial296, Initial297, Initial298, Initial299, Initial300, Initial301, Initial302, Initial303, Initial304, Initial305, Initial306, Initial307, Initial308, Initial309, Initial310, Initial311, Initial312, Initial313]
theorem origin_eq : input = output := by
  with_unfolding_all rfl
#print axioms origin_eq
end OriginChunk7
end InitE.BackendStages.TargetChecks
