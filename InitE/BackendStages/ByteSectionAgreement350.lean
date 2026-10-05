import InitE.BackendStages.BytesData350
import InitE.BackendStages.BytePiecesData350
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section350_eq : ByteData.bytes350 = [piece350_0].flatten := by
  rw [piece350_0_eq]
  rfl
#print axioms section350_eq
end InitE.BackendStages.BytePieces
