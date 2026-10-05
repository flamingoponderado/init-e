import InitE.BackendStages.BytesData286
import InitE.BackendStages.BytePiecesData286
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section286_eq : ByteData.bytes286 = [piece286_0].flatten := by
  rw [piece286_0_eq]
  rfl
#print axioms section286_eq
end InitE.BackendStages.BytePieces
