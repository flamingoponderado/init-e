import InitE.BackendStages.BytesData207
import InitE.BackendStages.BytePiecesData207
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section207_eq : ByteData.bytes207 = [piece207_0].flatten := by
  rw [piece207_0_eq]
  rfl
#print axioms section207_eq
end InitE.BackendStages.BytePieces
