import InitE.BackendStages.BytesData74
import InitE.BackendStages.BytePiecesData74
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section74_eq : ByteData.bytes74 = [piece74_0].flatten := by
  rw [piece74_0_eq]
  rfl
#print axioms section74_eq
end InitE.BackendStages.BytePieces
