import Tools.GenSmallStages
import InitE.SmallStages.Oracles255
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 255 InitE.WordStages.source255.2.1 InitE.WordStages.source255.2.2 InitE.SmallStages.Oracles255.oracle255
