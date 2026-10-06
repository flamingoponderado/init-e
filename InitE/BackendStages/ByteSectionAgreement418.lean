import InitE.BackendStages.BytesData418
import InitE.BackendStages.BytePiecesData418
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section418_eq : ByteData.bytes418 = [piece418_0].flatten := by
  rw [piece418_0_eq]
  rfl
#print axioms section418_eq
end InitE.BackendStages.BytePieces
