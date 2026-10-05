import InitE.BackendStages.BytesData883
import InitE.BackendStages.BytePiecesData883
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section883_eq : ByteData.bytes883 = [piece883_0].flatten := by
  rw [piece883_0_eq]
  rfl
#print axioms section883_eq
end InitE.BackendStages.BytePieces
