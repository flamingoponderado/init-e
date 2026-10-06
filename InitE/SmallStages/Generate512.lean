import Tools.GenSmallStages
import InitE.SmallStages.Oracles512
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 512 InitE.WordStages.source512.2.1 InitE.WordStages.source512.2.2 InitE.SmallStages.Oracles512.oracle512
