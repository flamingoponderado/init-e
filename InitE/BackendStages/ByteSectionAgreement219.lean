import InitE.BackendStages.BytesData219
import InitE.BackendStages.BytePiecesData219
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section219_eq : ByteData.bytes219 = [piece219_0].flatten := by
  rw [piece219_0_eq]
  rfl
#print axioms section219_eq
end InitE.BackendStages.BytePieces
