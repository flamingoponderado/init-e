import InitE.BackendStages.BytesData630
import InitE.BackendStages.BytePiecesData630
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section630_eq : ByteData.bytes630 = [piece630_0].flatten := by
  rw [piece630_0_eq]
  rfl
#print axioms section630_eq
end InitE.BackendStages.BytePieces
