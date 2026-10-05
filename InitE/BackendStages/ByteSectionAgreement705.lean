import InitE.BackendStages.BytesData705
import InitE.BackendStages.BytePiecesData705
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section705_eq : ByteData.bytes705 = [piece705_0, piece705_1].flatten := by
  rw [piece705_0_eq, piece705_1_eq]
  rfl
#print axioms section705_eq
end InitE.BackendStages.BytePieces
