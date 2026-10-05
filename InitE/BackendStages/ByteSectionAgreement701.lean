import InitE.BackendStages.BytesData701
import InitE.BackendStages.BytePiecesData701
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section701_eq : ByteData.bytes701 = [piece701_0, piece701_1].flatten := by
  rw [piece701_0_eq, piece701_1_eq]
  rfl
#print axioms section701_eq
end InitE.BackendStages.BytePieces
