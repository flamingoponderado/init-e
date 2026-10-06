import InitE.BackendStages.BytesData600
import InitE.BackendStages.BytePiecesData600
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section600_eq : ByteData.bytes600 = [piece600_0].flatten := by
  rw [piece600_0_eq]
  rfl
#print axioms section600_eq
end InitE.BackendStages.BytePieces
