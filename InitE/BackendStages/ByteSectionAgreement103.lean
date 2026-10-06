import InitE.BackendStages.BytesData103
import InitE.BackendStages.BytePiecesData103
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section103_eq : ByteData.bytes103 = [piece103_0].flatten := by
  rw [piece103_0_eq]
  rfl
#print axioms section103_eq
end InitE.BackendStages.BytePieces
