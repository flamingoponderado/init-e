import InitE.BackendStages.BytesData510
import InitE.BackendStages.BytePiecesData510
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section510_eq : ByteData.bytes510 = [piece510_0].flatten := by
  rw [piece510_0_eq]
  rfl
#print axioms section510_eq
end InitE.BackendStages.BytePieces
