import InitE.BackendStages.BytesData743
import InitE.BackendStages.BytePiecesData743
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section743_eq : ByteData.bytes743 = [piece743_0].flatten := by
  rw [piece743_0_eq]
  rfl
#print axioms section743_eq
end InitE.BackendStages.BytePieces
