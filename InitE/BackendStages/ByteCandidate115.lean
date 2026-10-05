import InitE.BackendStages.BytePiecesData632
import InitE.BackendStages.BytePiecesData633
import InitE.BackendStages.BytePiecesData634
import InitE.BackendStages.BytePiecesData635
import InitE.BackendStages.BytePiecesData636
import InitE.BackendStages.BytePiecesData637
import InitE.BackendStages.BytePiecesData638
import InitECandidate.Bytes115
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate115_eq : InitECandidate.bytes115 = [piece632_1, piece633_0, piece634_0, piece635_0, piece636_0, piece637_0, piece638_0].flatten := by
  rw [piece632_1_eq, piece633_0_eq, piece634_0_eq, piece635_0_eq, piece636_0_eq, piece637_0_eq, piece638_0_eq]
  rfl
#print axioms candidate115_eq
end InitE.BackendStages.BytePieces
