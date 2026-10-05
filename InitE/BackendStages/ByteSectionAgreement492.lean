import InitE.BackendStages.BytesData492
import InitE.BackendStages.BytePiecesData492
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section492_eq : ByteData.bytes492 = [piece492_0].flatten := by
  rw [piece492_0_eq]
  rfl
#print axioms section492_eq
end InitE.BackendStages.BytePieces
