import InitE.BackendStages.BytesData839
import InitE.BackendStages.BytePiecesData839
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section839_eq : ByteData.bytes839 = [piece839_0].flatten := by
  rw [piece839_0_eq]
  rfl
#print axioms section839_eq
end InitE.BackendStages.BytePieces
