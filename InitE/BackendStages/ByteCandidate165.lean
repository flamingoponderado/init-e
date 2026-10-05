import InitE.BackendStages.BytePiecesData765
import InitE.BackendStages.BytePiecesData766
import InitE.BackendStages.BytePiecesData767
import InitE.BackendStages.BytePiecesData768
import InitE.BackendStages.BytePiecesData769
import InitE.BackendStages.BytePiecesData770
import InitE.BackendStages.BytePiecesData771
import InitECandidate.Bytes165
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate165_eq : InitECandidate.bytes165 = [piece765_1, piece766_0, piece767_0, piece768_0, piece769_0, piece770_0, piece771_0].flatten := by
  rw [piece765_1_eq, piece766_0_eq, piece767_0_eq, piece768_0_eq, piece769_0_eq, piece770_0_eq, piece771_0_eq]
  rfl
#print axioms candidate165_eq
end InitE.BackendStages.BytePieces
