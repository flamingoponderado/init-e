import InitE.BackendStages.BytesData871
import InitE.BackendStages.BytePiecesData871
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section871_eq : ByteData.bytes871 = [piece871_0].flatten := by
  rw [piece871_0_eq]
  rfl
#print axioms section871_eq
end InitE.BackendStages.BytePieces
