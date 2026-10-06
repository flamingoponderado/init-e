import InitE.BackendStages.BytesData95
import InitE.BackendStages.BytePiecesData95
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section95_eq : ByteData.bytes95 = [piece95_0].flatten := by
  rw [piece95_0_eq]
  rfl
#print axioms section95_eq
end InitE.BackendStages.BytePieces
