import InitE.BackendStages.BytesData353
import InitE.BackendStages.BytePiecesData353
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section353_eq : ByteData.bytes353 = [piece353_0].flatten := by
  rw [piece353_0_eq]
  rfl
#print axioms section353_eq
end InitE.BackendStages.BytePieces
