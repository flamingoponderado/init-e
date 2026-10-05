import InitE.BackendStages.BytesData202
import InitE.BackendStages.BytePiecesData202
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section202_eq : ByteData.bytes202 = [piece202_0].flatten := by
  rw [piece202_0_eq]
  rfl
#print axioms section202_eq
end InitE.BackendStages.BytePieces
