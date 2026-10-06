import InitE.BackendStages.BytesData340
import InitE.BackendStages.BytePiecesData340
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section340_eq : ByteData.bytes340 = [piece340_0].flatten := by
  rw [piece340_0_eq]
  rfl
#print axioms section340_eq
end InitE.BackendStages.BytePieces
