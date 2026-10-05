import InitE.BackendStages.BytesData625
import InitE.BackendStages.BytePiecesData625
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section625_eq : ByteData.bytes625 = [piece625_0, piece625_1].flatten := by
  rw [piece625_0_eq, piece625_1_eq]
  rfl
#print axioms section625_eq
end InitE.BackendStages.BytePieces
