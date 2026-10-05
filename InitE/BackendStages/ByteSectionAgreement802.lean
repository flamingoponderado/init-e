import InitE.BackendStages.BytesData802
import InitE.BackendStages.BytePiecesData802
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section802_eq : ByteData.bytes802 = [piece802_0, piece802_1].flatten := by
  rw [piece802_0_eq, piece802_1_eq]
  rfl
#print axioms section802_eq
end InitE.BackendStages.BytePieces
