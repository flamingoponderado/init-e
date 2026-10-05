import Tools.GenSmallStages
import InitE.SmallStages.Oracles445
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 445 InitE.WordStages.source445.2.1 InitE.WordStages.source445.2.2 InitE.SmallStages.Oracles445.oracle445
