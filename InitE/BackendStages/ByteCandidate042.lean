import InitE.BackendStages.BytePiecesData287
import InitE.BackendStages.BytePiecesData288
import InitE.BackendStages.BytePiecesData289
import InitE.BackendStages.BytePiecesData290
import InitE.BackendStages.BytePiecesData291
import InitE.BackendStages.BytePiecesData292
import InitE.BackendStages.BytePiecesData293
import InitE.BackendStages.BytePiecesData294
import InitECandidate.Bytes042
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate042_eq : InitECandidate.bytes042 = [piece287_1, piece288_0, piece289_0, piece290_0, piece291_0, piece292_0, piece293_0, piece294_0].flatten := by
  rw [piece287_1_eq, piece288_0_eq, piece289_0_eq, piece290_0_eq, piece291_0_eq, piece292_0_eq, piece293_0_eq, piece294_0_eq]
  rfl
#print axioms candidate042_eq
end InitE.BackendStages.BytePieces
