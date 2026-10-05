import InitE.BackendStages.BytePiecesData261
import InitE.BackendStages.BytePiecesData262
import InitE.BackendStages.BytePiecesData263
import InitE.BackendStages.BytePiecesData264
import InitE.BackendStages.BytePiecesData265
import InitE.BackendStages.BytePiecesData266
import InitECandidate.Bytes035
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate035_eq : InitECandidate.bytes035 = [piece261_2, piece262_0, piece263_0, piece264_0, piece265_0, piece266_0].flatten := by
  rw [piece261_2_eq, piece262_0_eq, piece263_0_eq, piece264_0_eq, piece265_0_eq, piece266_0_eq]
  rfl
#print axioms candidate035_eq
end InitE.BackendStages.BytePieces
