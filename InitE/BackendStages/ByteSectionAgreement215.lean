import InitE.BackendStages.BytesData215
import InitE.BackendStages.BytePiecesData215
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section215_eq : ByteData.bytes215 = [piece215_0].flatten := by
  rw [piece215_0_eq]
  rfl
#print axioms section215_eq
end InitE.BackendStages.BytePieces
