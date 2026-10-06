import InitE.BackendStages.BytesData803
import InitE.BackendStages.BytePiecesData803
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section803_eq : ByteData.bytes803 = [piece803_0, piece803_1, piece803_2].flatten := by
  rw [piece803_0_eq, piece803_1_eq, piece803_2_eq]
  rfl
#print axioms section803_eq
end InitE.BackendStages.BytePieces
