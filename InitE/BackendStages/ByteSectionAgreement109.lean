import InitE.BackendStages.BytesData109
import InitE.BackendStages.BytePiecesData109
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section109_eq : ByteData.bytes109 = [piece109_0].flatten := by
  rw [piece109_0_eq]
  rfl
#print axioms section109_eq
end InitE.BackendStages.BytePieces
