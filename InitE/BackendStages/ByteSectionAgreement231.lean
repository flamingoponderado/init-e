import InitE.BackendStages.BytesData231
import InitE.BackendStages.BytePiecesData231
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section231_eq : ByteData.bytes231 = [piece231_0, piece231_1, piece231_2].flatten := by
  rw [piece231_0_eq, piece231_1_eq, piece231_2_eq]
  rfl
#print axioms section231_eq
end InitE.BackendStages.BytePieces
