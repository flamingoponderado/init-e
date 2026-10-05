import InitE.BackendStages.BytesData860
import InitE.BackendStages.BytePiecesData860
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section860_eq : ByteData.bytes860 = [piece860_0, piece860_1, piece860_2].flatten := by
  rw [piece860_0_eq, piece860_1_eq, piece860_2_eq]
  rfl
#print axioms section860_eq
end InitE.BackendStages.BytePieces
