import InitE.BackendStages.BytesData500
import InitE.BackendStages.BytePiecesData500
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section500_eq : ByteData.bytes500 = [piece500_0].flatten := by
  rw [piece500_0_eq]
  rfl
#print axioms section500_eq
end InitE.BackendStages.BytePieces
