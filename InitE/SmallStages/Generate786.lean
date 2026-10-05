import Tools.GenSmallStages
import InitE.SmallStages.Oracles786
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 786 InitE.WordStages.source786.2.1 InitE.WordStages.source786.2.2 InitE.SmallStages.Oracles786.oracle786
