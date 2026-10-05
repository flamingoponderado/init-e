import InitE.BackendStages.BytesData313
import InitE.BackendStages.BytePiecesData313
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section313_eq : ByteData.bytes313 = [piece313_0].flatten := by
  rw [piece313_0_eq]
  rfl
#print axioms section313_eq
end InitE.BackendStages.BytePieces
