import InitE.BackendStages.BytesData355
import InitE.BackendStages.BytePiecesData355
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section355_eq : ByteData.bytes355 = [piece355_0].flatten := by
  rw [piece355_0_eq]
  rfl
#print axioms section355_eq
end InitE.BackendStages.BytePieces
