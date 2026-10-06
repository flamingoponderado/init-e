import InitE.BackendStages.BytesData612
import InitE.BackendStages.BytePiecesData612
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section612_eq : ByteData.bytes612 = [piece612_0].flatten := by
  rw [piece612_0_eq]
  rfl
#print axioms section612_eq
end InitE.BackendStages.BytePieces
