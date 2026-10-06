import InitE.BackendStages.BytesData532
import InitE.BackendStages.BytePiecesData532
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section532_eq : ByteData.bytes532 = [piece532_0].flatten := by
  rw [piece532_0_eq]
  rfl
#print axioms section532_eq
end InitE.BackendStages.BytePieces
