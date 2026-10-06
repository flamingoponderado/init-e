import InitE.BackendStages.BytesData664
import InitE.BackendStages.BytePiecesData664
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section664_eq : ByteData.bytes664 = [piece664_0, piece664_1].flatten := by
  rw [piece664_0_eq, piece664_1_eq]
  rfl
#print axioms section664_eq
end InitE.BackendStages.BytePieces
