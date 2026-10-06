import InitE.BackendStages.BytesData222
import InitE.BackendStages.BytePiecesData222
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section222_eq : ByteData.bytes222 = [piece222_0].flatten := by
  rw [piece222_0_eq]
  rfl
#print axioms section222_eq
end InitE.BackendStages.BytePieces
