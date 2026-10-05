import InitE.BackendStages.BytesData552
import InitE.BackendStages.BytePiecesData552
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section552_eq : ByteData.bytes552 = [piece552_0, piece552_1].flatten := by
  rw [piece552_0_eq, piece552_1_eq]
  rfl
#print axioms section552_eq
end InitE.BackendStages.BytePieces
