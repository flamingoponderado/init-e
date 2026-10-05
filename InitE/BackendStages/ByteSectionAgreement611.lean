import InitE.BackendStages.BytesData611
import InitE.BackendStages.BytePiecesData611
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section611_eq : ByteData.bytes611 = [piece611_0].flatten := by
  rw [piece611_0_eq]
  rfl
#print axioms section611_eq
end InitE.BackendStages.BytePieces
